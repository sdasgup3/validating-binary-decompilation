void leaf() {
  __asm__("shlq $0x1, %rbx");
  }

void main() {
  leaf();
}