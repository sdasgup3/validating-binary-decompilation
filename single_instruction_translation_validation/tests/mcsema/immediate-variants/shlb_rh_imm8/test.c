void leaf() {
  __asm__("shlb $0x77, %ah");
  }

void main() {
  leaf();
}