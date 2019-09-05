void leaf() {
  __asm__("shlq $0x77, %rbx");
  }

void main() {
  leaf();
}