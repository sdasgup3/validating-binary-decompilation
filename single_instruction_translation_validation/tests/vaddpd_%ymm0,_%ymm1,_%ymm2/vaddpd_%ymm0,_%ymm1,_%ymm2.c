void leaf() {
	__asm__("vaddpd %ymm0, %ymm1, %ymm2");
}
void main() {
	leaf();
}
