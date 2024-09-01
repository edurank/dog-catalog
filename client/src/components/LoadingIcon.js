import styles from './LoadingIcon.module.css'

export default function LoadingIcon() {

    const cssLoading = {
        height: '500px',
        display: 'block'
    }

    return (
        <div style={cssLoading}>
            <img className={styles.rotatingIcon} src="/images/dogbone.svg" width={50} height={50}/>
        </div>
    )
}